# в config/initializers/locale.rb

# говорим библиотеке I18n, где искать наши переводы
I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]

# устанавливаем локаль по умолчанию на что-либо другое, чем :en
I18n.default_locale = :ru