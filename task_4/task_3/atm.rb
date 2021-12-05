# Напишите программу, которая начинается с чтения банковского баланса клиента из файла с именем balance.txt. 
# Этот файл содержит одну строку со стартовым балансом клиента. Если файл не существует, используйте стартовый баланс 100.0, 
# который должен быть константой.
# После этого программа повторно предложит клиенту внести деньги, вывести деньги, проверить баланс или выйти, используя буквы 
# **D (deposit), W (withdraw), B (balance) и Q (quit)**. Программа должна принимать на вход значения в верхнем или нижнем регистре.
# **Для депозитов (D)**, программа подсказывает сумму. Сумма должна быть больше нуля. Если сумма действительна, программа добавляет сумму депозита 
# к балансу клиента и отображает новый баланс.
# **При снятии средств (W)** программа выдаст запрос на сумму. Сумма должна быть больше нуля и меньше или равна текущему балансу. 
# Если сумма корректна, то программа вычитает сумму вывода из баланса клиента и отображает новый баланс.
# **Для проверки баланса (B)** программа просто выводит текущий баланс.
# Когда клиент решит **выйти из программы (Q)**, программа запишет текущий баланс обратно в файл balance.txt.
# В случае неправильного ввода (команда или сумма), ваша программа должна выдать соответствующее сообщение об ошибке, 
# которое говорит клиенту, как ее исправить. Нельзя просто выводить "Error!" - это не поможет.

require "./CashMachine"

bancomat = CashMachine.new
bancomat.init