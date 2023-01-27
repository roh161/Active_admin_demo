ActiveAdmin.register User do
  menu label: "VIP Clients"

    index do
        column :name
        column :address
        column :phone_number    
    end

   filter :name

   controller { actions :all, except: [:destroy] }

end