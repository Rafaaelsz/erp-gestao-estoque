from django.contrib import admin
from django.urls import path, include
from estoque import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),

    path('', views.dashboard, name='dashboard'),

    path('adicionar/', views.adicionar_produto, name='adicionar_produto'),
    path('editar/<int:id>/', views.editar_produto, name='editar_produto'),
    path('deletar/<int:id>/', views.deletar_produto, name='deletar_produto'),

    path('movimentar/<int:id>/', views.movimentar_produto,
         name='movimentar_produto'),
    path('historico/<int:id>/', views.historico_produto, name='historico_produto'),
]
