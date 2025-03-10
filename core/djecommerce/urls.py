from django.urls import path
from . import views

urlpatterns = [
    path('', views.item_list, name='item-list'),
    path('home', views.home, name='home'),
    path('checkout/', views.checkout, name='checkout'),
    path('product/', views.product, name='product'),
]
