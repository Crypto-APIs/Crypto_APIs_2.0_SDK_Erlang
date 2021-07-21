-module(cryptoapis_list_omni_tokens_by_address_ri).

-export([encode/1]).

-export_type([cryptoapis_list_omni_tokens_by_address_ri/0]).

-type cryptoapis_list_omni_tokens_by_address_ri() ::
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
