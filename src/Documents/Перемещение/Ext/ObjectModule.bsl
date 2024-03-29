﻿
Процедура ОбработкаПроведения(Отказ, Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!

	// регистр ОстаткиТоваров Приход
	Движения.ОстаткиТоваров.Записывать = Истина;
	Для Каждого ТекСтрокаТаблицаПеремещений Из ТаблицаПеремещений Цикл
		Движение = Движения.ОстаткиТоваров.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Товар = ТекСтрокаТаблицаПеремещений.Товар;
		Движение.Склад = ТекСтрокаТаблицаПеремещений.СкладНазначения;
		Движение.Количество = ТекСтрокаТаблицаПеремещений.Количество;
		Движение.Цена = ТекСтрокаТаблицаПеремещений.Товар.Цена;
	КонецЦикла;

	// регистр ОстаткиТоваров Расход
	Движения.ОстаткиТоваров.Записывать = Истина;
	Для Каждого ТекСтрокаТаблицаПеремещений Из ТаблицаПеремещений Цикл
		Движение = Движения.ОстаткиТоваров.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Период = Дата;
		Движение.Товар = ТекСтрокаТаблицаПеремещений.Товар;
		Движение.Склад = ТекСтрокаТаблицаПеремещений.СкладОтгрузки;
		Движение.Количество = ТекСтрокаТаблицаПеремещений.Количество;
		Движение.Цена = ТекСтрокаТаблицаПеремещений.Товар.Цена;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры
