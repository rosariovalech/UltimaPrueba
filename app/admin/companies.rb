ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
		column :id
		column :title 
		column :content
		column :created_at
		actions
	end

	permit_params :title, :content

	form do |f|
		inputs "Agregue un reclamo" do
		 input :title
		 input :content
		end
		actions
	end

	filter :title

end


