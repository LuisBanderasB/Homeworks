puts Symbol.all_symbols.size

# hash = {'val1': 'value1', 'val2': 'value2', 'val3': 'value3', 'val4': 'value4'}
animals = {:animal1 => "giraffe", :animal2 => "Leon", :animal3 => "Cat"}
# var = :somesymbol
# hash2 = ['val1' => 'value1']

puts Symbol.all_symbols.size


## Oskar's Help in irb

# irb(main):002:0> Symbol.all_symbols.size
# => 7073
# irb(main):003:0> animals = {:animal1 => "giraffe", :animal2 => "Leon", :animal3
# => "Cat"}
# => {:animal1=>"giraffe", :animal2=>"Leon", :animal3=>"Cat"}
# irb(main):004:0> animals = {:animal1 => "giraffe", :animal2 => "Leon", :animal3
# => "Cat", :animal4 => "Dog"}
# => {:animal1=>"giraffe", :animal2=>"Leon", :animal3=>"Cat", :animal4=>"Dog"}
# irb(main):005:0> Symbol.all_symbols.size
# => 7089
# irb(main):006:0> animals2 = {:animal1 => "giraffe", :animal2 => "Leon", :animal3
#  => "Cat"}
# => {:animal1=>"giraffe", :animal2=>"Leon", :animal3=>"Cat"}
# irb(main):007:0> Symbol.all_symbols.size
# => 7090
# irb(main):008:0> animals2[:animal4] = "string"
# => "string"
# irb(main):009:0> Symbol.all_symbols.size
# => 7093
# irb(main):010:0> Symbol.all_symbols.size
# => 7093
# irb(main):011:0> a = { a: 1, b: 2, c: 3 }
# => {: a=>1, :b=>2, :c=>3}
# irb(main):012:0> Symbol.all_symbols.size
# => 7094
# irb(main):013:0> b = { d: 4, e: 8 }
# => {:d=>4, :e=>8}
# irb(main):014:0> Symbol.all_symbols.size
# => 7094
# irb(main):015:0> a
# => {: a=>1, :b=>2, :c=>3}
# irb(main):016:0> b
# => {:d=>4, :e=>8}
# irb(main):017:0>