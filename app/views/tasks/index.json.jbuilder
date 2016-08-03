json.data @tasks do |task|
  json.id task.id
  json.title task.title
  json.link task_path(task)
end