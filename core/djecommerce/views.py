from django.shortcuts import render, get_object_or_404
from django.views.generic import ListView, DetailView
from django.shortcuts import redirect
from django.utils import timezone
from .models import Item, OrderItem, Order


def item_list(request):
    context = {
        'items': Item.objects.all()
    }
    return render(request, "home-page.html", context)

def checkout(request):
    return render(request, "checkout.html", {})

def product(request):
    return render(request, "product-page.html", {})

class HomeView(ListView):
    model = Item
    template_name = "home-page.html"
    
class ItemDetailView(DetailView):
    model = Item
    template_name = "product-page.html"


def add_to_cart(request, slug):
    # Получаем товар по его slug
    item = get_object_or_404(Item, slug=slug)
    # Создаем запись OrderItem для выбранного товара
    order_item = OrderItem.objects.create(item=item)
    # Ищем текущий заказ пользователя
    order_qs = Order.objects.filter(user=request.user, ordered=False)       # order_qs - order query set
    if order_qs.exists():
        order = order_qs[0]
        # check if the order item is in the order 
        if order.items.filter(item__slug=item.slug).exists():
            order_item.quantity += 1
            order_item.save()
    else:
        ordered_date = timezone.now()
        #Order = Order.objects.create(user=request.user, ordered_date = ordered_date)
        #order.items.add(order_item)
        new_order = Order.objects.create(user=request.user, ordered_date=ordered_date)
        # Добавляем товар в новый заказ
        new_order.items.add(order_item)
    return redirect("core:product", slug=slug)