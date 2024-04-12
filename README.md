# Репозиторий IOS_APPS

Добро пожаловать в мой репозиторий, посвященный изучению UIKit в рамках разработки iOS-приложений. Здесь вы найдете три основных проекта, каждый из которых посвящен определенной теме разработки приложений на Swift и UIKit.

## Содержание
- [Часть I: Архитектура iOS-приложения](#часть-i-архитектура-ios-приложения)
- [Часть II: Введение в табличные представления](#часть-ii-введение-в-табличные-представления)
- [Часть III: Продвинутые табличные представления](#часть-iii-продвинутые-табличные-представления)

---

## Часть I: Архитектура iOS-приложения
### Проект «Right on target»
![Right on Target App](https://github.com/nectorprog/IOS_apps/assets/109895680/35060b3d-fa2a-4163-a844-ca3652ad49e1)

**Описание игры:**

Игра «Right on target» — это тест на точность и внимание. В игре используются следующие правила:
1. Приложение случайным образом выбирает целое число от 1 до 50 и сообщает его игроку, отображая на текстовой метке.
2. Игрок устанавливает бегунок слайдера в положение, которое, по его мнению, соответствует загаданному числу. Положение слайдера варьируется от 1 (крайнее левое положение) до 50 (крайнее правое положение).
3. После выбора позиции слайдера, игрок подтверждает свой выбор нажатием кнопки.
4. Приложение оценивает, насколько выбранное значение близко к загаданному числу, и начисляет очки.

Цель игры — набрать максимальное количество очков за пять раундов.

**Использованные технологии и подходы:**

Проект разработан с использованием Storyboard и архитектурного шаблона MVC (Model-View-Controller). В проекте используются основные элементы интерфейса пользователя UIKit:
- **Слайдер (Slider)**: для выбора числа.
- **Кнопка (Button)**: для подтверждения выбора.
- **Текстовая метка (Label)**: для отображения информации о текущем выборе и загаданном числе.

**Динамика разработки и обучение:**

В процессе разработки было изучено:
- Жизненный цикл View Controller.
- Различные варианты смены сцен:
  - **Взаимные Segue**
  - **Методы present и dismiss**
  - **Navigation Controller и Segue**

В ходе проекта был проведен рефакторинг кода, в результате которого улучшена структура приложения и повышена его поддерживаемость.

**ОБНОВЛЕНИЯ:**
**Новые сущности в проекте:**

**GameRound**: Класс, представляющий отдельный раунд игры. Отвечает за хранение информации о текущем раунде, включая загаданное число и количество набранных очков.
**Generator**: Класс, ответственный за генерацию случайных чисел. Используется для создания новых значений в каждом раунде игры.


**Схема архитектуры MVC приложения:**

![MVC Architecture](https://github.com/nectorprog/IOS_apps/assets/109895680/3bd9544a-49f3-4809-9c9c-edeed5adfa76)

---

## Часть II: Введение в табличные представления
### Проект «Contacts»
В этой части рассматривается создание и использование табличных представлений для отображения списка контактов. Описание функционала и особенностей реализации.

---

## Часть III: Продвинутые табличные представления
### Проект «To-Do Manager»
Подробное описание проекта «To-Do Manager», его функций и способов реализации более сложных элементов управления в табличном представлении.
