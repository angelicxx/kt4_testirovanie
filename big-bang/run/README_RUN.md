# Запуск eShopOnWeb для прогона Big Bang

1) Установите .NET SDK 8+.
2) Распакуйте оригинальный архив проекта eShopOnWeb.
3) Выполните:
   - Linux/macOS: ./scripts/build_and_run.sh /путь/к/eShopOnWeb
   - Windows: ./scripts/build_and_run.ps1 -ProjectRoot "C:\\path\\to\\eShopOnWeb"
4) После старта откройте адрес из консоли (обычно http://localhost:5000 или http://localhost:5173).
5) Выполните smoke через Postman-коллекцию eShopOnWeb_BigBang.postman_collection.json.
