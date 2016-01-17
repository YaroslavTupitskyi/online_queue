ActiveAdmin.register Doctor do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params do
  permitted = [:name, :specialization, :hospital_id]
#   permitted << :other if resource.something?
  permitted
end


end
