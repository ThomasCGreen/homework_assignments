class Warmup04
  def find_multiples(multiple, limit)
    if (multiple <= 0)
      return(nil)
    end

    #array =[]
    #if (limit < multiple)
    #  return([])
    #end
    #
    #if (limit == multiple)
    #  return([multiple])
    #end

    #if (limit >= multiple)
    #  current = multiple
    #  while(current <= limit) do
    #    array.push(current)
    #    current += multiple
    #  end
    #end

    (multiple..limit).select{|number| number % multiple == 0}
    #return(array)
  end
end