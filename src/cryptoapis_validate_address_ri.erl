-module(cryptoapis_validate_address_ri).

-export([encode/1]).

-export_type([cryptoapis_validate_address_ri/0]).

-type cryptoapis_validate_address_ri() ::
    #{ 'address' := binary(),
       'isValid' := boolean()
     }.

encode(#{ 'address' := Address,
          'isValid' := IsValid
        }) ->
    #{ 'address' => Address,
       'isValid' => IsValid
     }.
