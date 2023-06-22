function calculate_area(length, width)
    --[[
    This function calculates the area of a rectangle given its length and width.
    
    Parameters:
    length (number): The length of the rectangle
    width (number): The width of the rectangle
    
    Returns:
    number: The area of the rectangle
    ]]
    
    -- Check if both arguments are numbers
    if type(length) ~= "number" or type(width) ~= "number" then
        print("Error: Both arguments must be numbers")
        return 0
    end
    
    -- Calculate and return the area
    return length * width
end