# КТ №4 Задание «Большой взрыв»
- Применить метод интеграционного тестирования большого взрыва на eShopOnWeb;
# О файлах:
- big-bang/plan/BigBang_TestPlan.md — план тестирования
- big-bang/run/README_RUN.md — запуск в локальной среде
- big-bang/run/scripts/build_and_run.sh — сборка и запуск
- big-bang/run/scripts/build_and_run.ps1 — сборка и запуск (Windows)
- big-bang/tests/Postman/eShopOnWeb_BigBang.postman_collection.json — коллекция для смок-проверок
- big-bang/tests/Checklists/EndToEnd_Checklist.md — чек-лист для быстрых сквозных проверок
- big-bang/output/Defects.csv — реестр дефектов, выявленных при подходе большого взрыва
- big-bang/output/TestReport.md — краткий отчёт
- big-bang/output/Anomalies.md — прочие аномалии

# запуск
1) Открыть big-bang/run/README_RUN.md и выполнитб шаги подготовки окружения.
2) Запустить скрипт build_and_run 
3) Выполнить Postman-коллекцию из big-bang/tests/Postman.
4) Отметчать статусы в чек-листе и при необходимости добавлятьновые строки в Defects.csv

# Наиболее значимые дефекты
- BB-01 (Critical): 500 при GET /Catalog?items=0 — необработанная валидация параметров.
- BB-05 (Critical): нестабильное подтверждение заказа (502 разово из трёх прогонов).
- BB-02 (High): корзина очищается после логина — потеря контекста сессии/привязки корзины к пользователю.
- BB-04 (High): неверный пересчёт итогов при qty > 10.
- BB-06 (High): XSS в поле поиска — неэкранированный ввод.
- BB-09 (High): конфликт транзакций при параллельном оформлении на один и тот же товар.
