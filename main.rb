require_relative 'lib/query'

result =
  Query.
    filter { status == 0 }.
    filter { requests > 5 }.
    from(5).
    sort(:id, name: :desc).
    size(10)

# {
#   "query": {
#       "status": 0,
#       "requests": {
#         "gt": 5
#       }
#   },
#   "sort": [
#     {
#       "id": "asc"
#     },
#     {
#       "name": "desc"
#     }
#   ],
#   "size": 10,
#   "from": 5
# }

puts JSON.pretty_generate(result)
