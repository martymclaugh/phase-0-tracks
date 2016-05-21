
class TodoList

   def initialize(item)
    @item = item
   end

  def get_items
    @item
  end

  def add_item(x)
    @item << x
  end

  def delete_item(x)
    @item.delete(x)
  end

  def get_item(y)
    @item[y]
  end

end

list1 = TodoList.new(["string1","string2"])
p list1.get_items
p list1.add_item("string3")
