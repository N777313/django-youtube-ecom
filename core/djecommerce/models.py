from django.conf import settings
from django.db import models
from django.shortcuts import reverse

CATEGORY_CHOICES = (
    ('F', 'Fruite'),
    ('V', 'vegetables'),
    ('OW', 'Outwear'),
    ('BB', 'Bread and baked goods'),
    ('DP','Dairy products')
)

LABEL_CHOICES = (
    ('P', 'primary'),
    ('S', 'secondary'),
    ('D', 'danger')
)

class Item(models.Model):
    title = models.CharField(max_length=100)
    title_full = models.CharField(max_length=8128)
    # price = models.DecimalField(max_digits=10, decimal_places=2)
    # price = models.DecimalField(max_digits=10, decimal_places=2)
    price = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    discount_price = models.DecimalField(max_digits=10, decimal_places=2,blank=True, null=True)
    category = models.CharField(choices=CATEGORY_CHOICES, max_length=2)
    label = models.CharField(choices=LABEL_CHOICES, max_length=1)
    imgsrc = models.CharField(max_length=8128)
    slug = models.SlugField()
    description = models.TextField()
    

    def __str__(self):
        return self.title
    
    def get_absolute_url(self):
        return reverse("core:product", kwargs={
            'slug': self.slug
        })
    
    def get_add_to_cart_url(self):
        return reverse("core:add-to-cart", kwargs={
            'slug': self.slug
        })

class OrderItem(models.Model):
    item = models.ForeignKey(Item, on_delete=models.CASCADE)
    # quantity = models.PositiveIntegerField(default=1)  # Добавил поле для количества товаров
    quantity = models.IntegerField(default=1)

    def __str__(self):
        return f"{self.quantity} of {self.item.title}"
        #return f"{self.item.title} (x{self.quantity})"  # Возвращаем название товара и количество

class Order(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    items = models.ManyToManyField(OrderItem)
    start_date = models.DateTimeField(auto_now_add=True)
    ordered_date = models.DateTimeField(null=True)
    ordered = models.BooleanField(default=False)

    def __str__(self):
        return f"Order #{self.id} for {self.user}"  # Строковое представление заказа (номер и пользователь)
