require 'rspec'
require 'rake'
require 'rest-client'
require 'httparty'
require 'pry'


describe do
let (:post){Todo.new title:'B and aj api test',
                      due:'111'}

it "should return a 200 when data has been requested from get"  do
    response = HTTParty.get ('http://lacedeamon.spartaglobal.com/todos')
    expect(response.code).to eq (200)
    #puts response
  end

# end
it "should return a 404 when a request is not found" do
    response = HTTParty.get ('http://lacedeamon.spartaglobal.com/posts')
    #puts response
    expect(response.code).to eq (404)
end

it "should return a 201 when data is created" do
    response = HTTParty.post('http://lacedeamon.spartaglobal.com/todos?title=bal and aj api testingj&due=103')
    puts response
    expect(response.code).to eq (201)
end

# it "should return a 400 error if post does not save" do
    # response = HTTParty.post('http://lacedeamon.spartaglobal.com/todos', query:{title:"",due:""})
    # expect(response.code).to eq (400)
# end
it "should be update data from a request" do
  #defect

  response = HTTParty.patch('http://lacedeamon.spartaglobal.com/todos/12570')
  [
    { "op:" "replace", "path:" "http://lacedeamon.spartaglobal.com/todos/12570", "title": "THE NEW TEST B AND AJ" }
  ]
  #expect(respose.patch)
 # expect(todos.update_id).to eq ['title=helllllllllllllllo b and aj']

  #('http://lacedeamon.spartaglobal.com/todos?id=12570&title=helllllllllllllllo b and aj')
end
# it "should return a 424 error code if update failed" do
#     post = todo.new
#     post = todo.update_id ("23452")
#     expect(todo.update_id).to eq ['32451']
#     expect(response.code).to eq (424)
# end
# it "should delele data from post" do
#     post = todo.new
#     post = todo.add_id(23451)
#     post = todo.add_title(milk)
#     post = todo.delele_todo("23451", "milk")
#     expect(delele_todo).to eq [""]
# end
# it "should return a error code if delete" do
#     post = todo.new
#     post = todo.add_id(23451)
#     post = todo.add_title(milk)
#     post = todo.delele_todo("23451", "milk")
#     expect(delele_todo).to eq [""]
#     expect(response.code).to eq (424
# end

end
