class SuppliersController < ApplicationController

  def all_suppliers
    @suppliers = Supplier.all
    render template: "supplierss/index"
  end

  def any_supplier
    @supplier = Supplier.find_by(id: params["id"])
    render template: "suppliers/show"
  end

  def create
    @supplier = Supplier.new(
    name: params["name"],
    email: params["email"],
    phone_number: params["phone_number"],
    supplier_id: params["supplier_id"],

  )
    if @supplier.save #happy path
      render :show
    else #sad path
      render json: { errors: @supplier.errors.full_messages}, status: :unprocessable_entity
      end
  end

  def update
    @supplier = Supplier.find_by(id: params["id"])

    @supplier.update(
      name: params["name"] || @supplier.name,
      email: params["email"] || @supplier.email,
      phone_number: params["phone_number"] || @supplier.phone_number,
      supplier_id: params["supplier_id"] || @supplier.supplier_id

    )
    if @supplier.save #happy path
      render :show
    else #sad path
      render json: { errors: @supplier.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Supplier.find_by(id: params["id"])
    product.destroy

    render json: {message: "supplier gone!"}
  end
end
