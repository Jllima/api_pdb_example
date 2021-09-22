class UserResponse
  include JSON::SchemaBuilder

  def schema
    object do
      object :data do
        integer :id
        string :username
        string :employee_name
        string :occupation
        boolean :confirmation
        array :roles do
          items do
            object do
              integer :id
              string :name
            end
          end
        end
      end
      object :meta do
        object :links do
          string :self
        end
      end
    end
  end
end
