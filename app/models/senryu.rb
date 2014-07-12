class Senryu < ActiveRecord::Base
  unloadable

  belongs_to :project

  acts_as_searchable columns: [:first_part, :second_part, :last_part],
                     include: :project,
                     order_column: :first_part,
                     permission: :view_senryus
  acts_as_event title: ->(o) { "#{o.first_part} #{o.second_part} #{o.last_part}" },
                url: ->(o) { { controller: :senryus, action: :show, id: o.id, project_id: o.project.identifier } },
                description: ->(o) { "#{o.first_part} #{o.second_part} #{o.last_part}" },
                datetime: :created_at
end
