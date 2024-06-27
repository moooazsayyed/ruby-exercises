RSpec.describe 'find pattern' do

  it 'test 1' do
    ages = [39, 45, 29, 24, 50]
    younger_than_thirty = nil
    ages.each do |age|
      if age < 30
        younger_than_thirty = age
        break
      end
    end
    # younger_than_thirty = ages.find do |age|
    #   age < 30
    # end
    expect(younger_than_thirty).to eq(29)
  end

  it 'test 2' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    younger_than_thirty = nil
    ages.each do |name, age|
      if age < 30
        younger_than_thirty = name
        break
      end
    end
    # younger_than_thirty = ages.find {|name, age|
    #  age < 30 }[0]
    expect(younger_than_thirty).to eq(:ladonna)
  end

  it 'test 3' do
    ages = [39, 45, 29, 24, 50]
    older_than_fifty = nil
    ages.each do |age|
      # Your Code Here
      if age > 50
        older_than_fifty = age
        break
      end
    end

    expect(older_than_fifty).to be_nil
  end

  it 'test 4' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    # older_than_fifty = nil
    # ages.each do |name, age|
    #   if age > 50
    #     older_than_fifty = name
    #     break
    #   end
    # end
    older_than_fifty = ages.find do | name , age |
      age > 50
    end
    expect(older_than_fifty).to be_nil
  end

  it 'test 5' do
    ages = [39, 45, 29, 24, 50]
    multiple_of_three = nil
    # Your Code Here
    # ages.each do |age|
    #   if age % 3 == 0
    #     multiple_of_three = age
    #      break
    #   end
    # end
    multiple_of_three = ages.find do |age|
      age % 3 == 0
    end
    expect(multiple_of_three).to eq(39)
  end

  it 'test 6' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    multiple_of_three = nil
    ages.each do |name ,age |
      if age % 3 == 0
        multiple_of_three = name
        break
      end
    end
    # multiple_of_three = ages.find  do |name , age|
    #   age % 3 == 0
    # end
    expect(multiple_of_three).to eq(:abdi)
  end

  it 'test 7' do
    people = ["Willie", "Carmen Sandiego", "Bryan", "Faith", "Zac"]
    # Your Code Here
    carmen = nil
    people.each do |person|
      if person == "Carmen Sandiego"
        carmen = person
        break
      end
    end
    #
    # carmen = people.find do |p |
    #   p == "Carmen Sandiego"
    # end
    expect(carmen).to eq("Carmen Sandiego")
  end

  it 'test 8' do
    places = {
      Bangkok: "Willie",
      Santa_Fe: "Carmen Sandiego",
      Rome: "Bryan",
      Munich: "Faith",
      Mogudishu: "Zac"
    }
    # Your Code Here
    where_is_carmen_sandiego = nil
    places.each do |city, name |
      if name == "Carmen Sandiego"
        where_is_carmen_sandiego = city
        break
      end
    end

    # where_is_carmen_sandiego = places.find {|city, name| name == "Carmen Sandiego" }[0]
    expect(where_is_carmen_sandiego).to eq(:Santa_Fe)
  end

  it 'test 9' do
    numbers = [3, 7, 13, 11, 10, 2, 17]
    # Your Code Here
    even = nil
    numbers.each do |num|
      if num % 2 == 0
        even = num
        break
      end
    end
    # even = numbers.find do |num|
    #   num % 2 == 0
    # end
    expect(even).to eq(10)
  end

  it 'test 10' do
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    # Your Code Here
    pending = nil
    purchases.each do | item , status |
      if item == "books"
      pending = item.to_sym
      break
      end
    end
    expect(pending).to eq(:books)
  end

  it 'test 11' do
    purchases = {
      "shoes" => :paid,
      "backpack" => :paid,
      "books" => :pending,
      "posters" => :paid,
      "food" => :pending
    }
    # Your Code Here
    # starts_with_b = nil
    # purchases.each do |item , status|
    #   if item.start_with?("b")
    #   starts_with_b = item
    #   break
    #   end
    # end
    starts_with_b=purchases.find do | item , status |
      item.start_with?("b")
    end[0]
    expect(starts_with_b).to eq("backpack")
  end
end
