# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
Account.create!([
  {:code => "1000", :title => "Kasse"},
  {:code => "1010", :title => "Kasse Laden"},
  {:code => "1021", :title => "EFT Kontokorrent"},
  {:code => "1100", :title => "Debitoren"},
  {:code => "2001", :title => "Ausstehende Gutscheine"},
  {:code => "3200", :title => "Dienstleistungsertrag"},
  {:code => "3900", :title => "Debitorenverlust"},
])

BookingTemplate.create!([
  {:title => "Bareinnahmen", :credit_account => Account.where(:code => "3200").first, :debit_account => Account.where(:code => "1010").first},
  {:title => "Kreditkarten Einnahmen", :credit_account => Account.where(:code => "3200").first, :debit_account => Account.where(:code => "1021").first},
  {:title => "Barausgabe", :credit_account => Account.where(:code => "1010").first, :debit_account => Account.where(:code => "1000").first},
  {:title => "Kredit", :credit_account => Account.where(:code => "3200").first, :debit_account => Account.where(:code => "1100").first},
  {:title => "Gutschein ausgestellt", :credit_account => Account.where(:code => "2001").first, :debit_account => Account.where(:code => "1010").first},
  {:title => "Gutschein eingelöst", :credit_account => Account.where(:code => "3200").first, :debit_account => Account.where(:code => "2001").first},
])
