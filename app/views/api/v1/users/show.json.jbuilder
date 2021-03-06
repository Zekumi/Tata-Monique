json.extract! @user, :id, :first_name, :last_name, :birth_date, :phone_number, :ID_number, :nationality, :birth_location, :email, :username, :zip_code_location
json.habitation @user.habitation, :id, :number, :street, :city, :zip_code, :category, :rent, :size, :lease_start_date, :furnished
json.health @user.health, :id, :ssn, :social_security, :health_insurance
json.familial_situation @user.familial_situation, :id, :children, :relationship
json.professional_situation @user.professional_situation, :id, :income, :occupation, :fiscal_number, :contract, :company_name, :status, :iban, :fiscal_attach
json.documents @user.documents, :id, :category, :name, :photo
json.usersubtasks @user.usersubtasks, :id, :done, :created_at, :updated_at
