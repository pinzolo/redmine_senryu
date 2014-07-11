Redmine::Plugin.register :redmine_senryu do
  name 'Redmine Senryu plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  project_module :senryu do
    permission :view_senryu, senryus: [:index]
    permission :manage_senryu, senryus: [:new, :create]
  end
  menu :project_menu, :senryu, { controller: :senryus, action: :index }, param: :project_id, caption: :project_module_senryu
end
