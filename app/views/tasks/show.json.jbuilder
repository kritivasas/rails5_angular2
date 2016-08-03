if @task
  json.data @task, :id, :title
else
  json.errors ['no such task'] 
end