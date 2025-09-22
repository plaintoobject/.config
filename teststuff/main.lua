-- Type Conversion ?
local str = "23"

print(type(tonumber(str)))

local num = 23

print(type(tostring(num)))

-- Math ?
-- Operations
print(10 / 2)
print(6 % 3)
print(2 + 2 * (2 + 4))
print((2 * 4) / 2)
print(100 / 3.14)

_G.PI = 3.14

math.randomseed(os.time())

print(math.random())
print(math.random(10, 64))
print(math.floor(_G.PI))
print(math.ceil(_G.PI))
print(math.abs(_G.PI))
print(math.max(_G.PI, 3.15, 3.16, 3.17))
print(math.min(_G.PI, 3.13, 3.10, 3))
print(os.time())

-- Strings ?

local str = "String"

print(str)
print("Type: ", type(str))

local add_str = "Hello" .. "World" .. "Sample..."
print(add_str)

local some_str = [[
  Some string
  This is also
  2 + 4 ? 6 : true : false
]]
print(some_str)
print("Type: ", type(some_str))

local x = 22
print(type(x))

local y = tostring(x)

print(type(y))

-- Escape chars ?

print("Hello")
print("World!")

-- Above is bad

print([[
  Some good
  But not better
      Yeah
]])

-- Better
print('Hello\nWorld!\t\n...\n\vI am "John"!\n')

-- Our methods

local upp_str = "Hello World!"

print(string.upper(upp_str))
print(string.lower(upp_str))
print(string.len(upp_str))
print(string.sub(str, 5, 10))
print(string.char(65))
print(string.byte(upp_str, 1, 99))
print(string.rep("Hello", 10, ", "))
print(string.format("PI: %.3f My age: %i", math.pi, 18))
print(string.find(upp_str, "orl"))
print(string.match(upp_str, "ell"))

local begin, ending = string.find(upp_str, "orl")
print("begin: " .. begin .. "\nending: " .. ending)

print(string.gsub(upp_str, "o", "O"))

-- Control flow ?

-- If else statement
local is_false = true

if is_false then
  print("That was true")
end

--[[
-->
--<
-->=
--<=
]]
local age = 18

if age > 17 and (age < 30) then
  print("You are an adult!")
end

if age < 17 then
  print("You are a teen!")
end

if age ~= 20 then
  print("You may enter")
end

local name = "Abdul"

if name == "Azis" and age == 18 then
  print("Welcome admin!")
end

if name == "Abdul" and age == 18 then
  print("Welcome superadmin!")
end

if age > 17 then
  print("You are old")
elseif age > 10 then
  print("You are teen")
else
  print("You are young")
end

if type(age) == "number" then
  print("Age is a number value")
end

-- Is this ternary ?

local your_age = 20

local too_old = your_age > 50 and true or false

print("Is you are an old? " .. tostring(too_old))

-- Loops
for i = 1, 10, 1 do
  print(i)

  if i == 2 then
    print("i is: " .. tostring(i))
  end

  if i == 9 then
    break
  end
end

local index = 10

while index > 0 do
  index = index - 1

  print("while - " .. tostring(index))

  if index == 5 then
    break
  end
end

repeat
  print("Repeating")
  index = index + 1
until index > 10

-- Array
local arr = { "First", "Second", "Third" } -- starts with index 1

print(arr[1])

for i = 1, 3, 1 do
  print(arr[i])
end

local another_arr = {
  "First",
  2,
  3.14,
  nil
}

for i = 1, 4, 1 do
  print(another_arr[i])
end

-- dict
local dict = {
  ["A"] = "this is a",
  ["B"] = "this is b",
  ["C"] = "this is c",
}

for i, val in pairs(dict) do
  print(i, val)
end

-- function

-- @param arg string
function GlobalFunction(arg)
  if type(arg) ~= 'string' then
    return nil
  end
  return arg
end

local x = GlobalFunction(0)

print(GlobalFunction("Oi"))
print(x)

-- local function
local function my_function(arg)
  if type(arg) ~= 'string' then
    return nil
  end
  return arg .. " local my_function"
end

print(my_function("Oi"))
print(my_function(0))
