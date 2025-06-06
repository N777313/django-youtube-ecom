from django.urls import path
from . import views
from .views import (
    ItemDetailView,
    checkout,
    HomeView,
    add_to_cart
)

app_name = 'core'

urlpatterns = [
    path('', HomeView.as_view(), name='home'),
    path('item-list/', views.item_list, name='item-list'),
    # path('home', views.home, name='home'),
    path('checkout/', views.checkout, name='checkout'),
    # path('product/', views.product, name='product'),
    path('product/<slug>/', ItemDetailView.as_view(), name='product'),
    #path('add-to-cart/<slug>/', add_to_cart, name='add-to-cart'),
    path('add-to-cart/<slug>/', add_to_cart, name='add-to-cart'),
]
