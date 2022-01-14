from django.test import TestCase
from .models import Item, Client, Orders, Cloth_type


class ItemsTestCase(TestCase):
    def setUp(self):
        self.item = Item.objects.create(
            id_item=5,
            name="Jordan 2001 MID",
            serial_number="S638D9900012",
            size=42,
            material="Mixed",
            price=59.99,
            manufacturer="Nike",
            color="Black",
            cloth_type="Hoodie",
            owner="admin",
        )

    def test_item_creations(self):
        self.assertEqual(self.item.id_item, 5)
        self.assertEqual(self.item.name, 'Jordan 2001 MID')
        self.assertEqual(self.item.serial_number, 'S638D9900012')
        self.assertEqual(self.item.size, 42)
        self.assertEqual(self.item.material, 'Mixed')
        self.assertEqual(self.item.price, 59.99)
        self.assertEqual(self.item.manufacturer, 'Nike')
        self.assertEqual(self.item.color, 'Black')
        self.assertEqual(self.item.cloth_type, 'Hoodie')
        self.assertEqual(self.item.owner, 'admin')

        self.assertTrue(self.item.id_item, 5)
        self.assertTrue(self.item.name, 'Jordan 2001 MID')
        self.assertTrue(self.item.serial_number, 'S638D9900012')
        self.assertTrue(self.item.size, 42)
        self.assertTrue(self.item.material, 'Mixed')
        self.assertTrue(self.item.price, 59.99)
        self.assertTrue(self.item.manufacturer, 'Nike')
        self.assertTrue(self.item.color, 'Black')
        self.assertTrue(self.item.cloth_type, 'Hoodie')
        self.assertTrue(self.item.owner, 'admin')

        self.assertIsInstance(self.item.id_item, int)
        self.assertIsInstance(self.item.name, str)
        self.assertIsInstance(self.item.serial_number, str)
        self.assertIsInstance(self.item.size, int)
        self.assertIsInstance(self.item.material, str)
        self.assertIsInstance(self.item.price, float)
        self.assertIsInstance(self.item.manufacturer, str)
        self.assertIsInstance(self.item.color, str)
        self.assertIsInstance(self.item.cloth_type, str)
        self.assertIsInstance(self.item.owner, str)
