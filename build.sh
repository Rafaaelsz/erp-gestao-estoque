#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
```

#### 4. Configurar o `settings.py` para Produção

Essa é a parte mais importante. Vamos alterar o `setup/settings.py` para ele ser inteligente: se estiver no seu PC, usa SQLite; se estiver no Render, usa PostgreSQL.

Abra `setup/settings.py` e faça estas 4 alterações:

**A. No topo do arquivo:**
```python
import os
import dj_database_url # <--- Adicione este import
from pathlib import Path
```

**B. No meio, procure `MIDDLEWARE`. Adicione o Whitenoise LOGO DEPOIS de `SecurityMiddleware`:**
```python
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    "whitenoise.middleware.WhiteNoiseMiddleware", # <--- ADICIONE AQUI
    'django.contrib.sessions.middleware.SessionMiddleware',
    # ... resto ...
]
```

**C. Procure `DATABASES`. Substitua o bloco inteiro por:**
```python
# Configuração de Banco de Dados Híbrida
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}

# Se existir uma URL de banco externo (Render), usa ela
database_url = os.environ.get("DATABASE_URL")
if database_url:
    DATABASES["default"] = dj_database_url.parse(database_url)
```

**D. No final do arquivo, configure os Arquivos Estáticos:**
```python
# Configuração de Static e Media
STATIC_URL = 'static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles') # Pasta onde o Render vai juntar tudo

# Importante para o Whitenoise funcionar
STATICFILES_STORAGE = "whitenoise.storage.CompressedManifestStaticFilesStorage"

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

# Segurança (permite o Render acessar)
ALLOWED_HOSTS = ["*"] 
```

---

### Parte 2: Subir para o GitHub

Agora que o código está pronto para produção, precisamos atualizar o GitHub.

```bash
git add .
git commit -m "Configuração para Deploy no Render"
git push