json.extract! task, :id, :name, :assigned, :content, :due_date, :tag, :status, :creator, :time, :created_at, :updated_at
json.url task_url(task, format: :json)
