ActiveAdmin.register Record do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params do
  permitted = [:name, :time_at, :phone, :doctor_id]
#   permitted << :other if resource.something?
  permitted
end


end
