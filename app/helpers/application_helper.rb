module ApplicationHelper
  def flash_class(type)
    case type
      when "notice" then "bg-blue-100 border-t border-b border-blue-500 text-blue-700 px-4 py-3"
      when "success" then "bg-green-100 border-t border-b border-green-500 text-green-700 px-4 py-3"
      when "error" then "bg-red-100 border-t border-b border-red-500 text-red-700 px-4 py-3"
      when "warning" then "bg-yellow-100 border-t border-b border-yellow-500 text-yellow-700 px-4 py-3"
    end
  end
end
