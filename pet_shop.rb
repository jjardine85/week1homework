
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end
# passes two tests
def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, additional_pets)
  return pet_shop[:admin][:pets_sold] += additional_pets
end

def stock_count(pet_shop)
    return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  total = []
    for pets in pet_shop[:pets]
      if breed == pets[:breed]
        total.push(pets)
      end
    end
  return total
end

def find_pet_by_name(pet_shop, name)
  for pets in pet_shop[:pets]
    if name == pets[:name]
      return pets
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
      return pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  return customer[:pets].push(pet)
end
