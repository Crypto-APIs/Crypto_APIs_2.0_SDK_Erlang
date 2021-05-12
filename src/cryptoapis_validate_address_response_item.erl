-module(cryptoapis_validate_address_response_item).

-export([encode/1]).

-export_type([cryptoapis_validate_address_response_item/0]).

-type cryptoapis_validate_address_response_item() ::
    #{ 'address' := binary(),
       'isValid' := boolean()
     }.

encode(#{ 'address' := Address,
          'isValid' := IsValid
        }) ->
    #{ 'address' => Address,
       'isValid' => IsValid
     }.
