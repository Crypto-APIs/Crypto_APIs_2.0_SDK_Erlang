-module(cryptoapis_list_omni_tokens_by_address_response_item).

-export([encode/1]).

-export_type([cryptoapis_list_omni_tokens_by_address_response_item/0]).

-type cryptoapis_list_omni_tokens_by_address_response_item() ::
    #{ 'balance' := binary(),
       'frozen' := binary(),
       'name' := binary(),
       'propertyId' := integer(),
       'reserved' := binary()
     }.

encode(#{ 'balance' := Balance,
          'frozen' := Frozen,
          'name' := Name,
          'propertyId' := PropertyId,
          'reserved' := Reserved
        }) ->
    #{ 'balance' => Balance,
       'frozen' => Frozen,
       'name' => Name,
       'propertyId' => PropertyId,
       'reserved' => Reserved
     }.
