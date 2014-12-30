module Account::GroupsHelper
  def render_group_title(group)
    truncate(group.title, :length => 20 )
    
  end
end
