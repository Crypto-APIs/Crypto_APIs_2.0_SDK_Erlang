-module(cryptoapis_get_block_details_by_block_hash_from_callback_ribst).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_from_callback_ribst/0]).

-type cryptoapis_get_block_details_by_block_hash_from_callback_ribst() ::
    #{ 'bandwidthUsed' := binary(),
       'burnedTrx' := binary(),
       'energyUsed' := binary(),
       'size' := integer()
     }.

encode(#{ 'bandwidthUsed' := BandwidthUsed,
          'burnedTrx' := BurnedTrx,
          'energyUsed' := EnergyUsed,
          'size' := Size
        }) ->
    #{ 'bandwidthUsed' => BandwidthUsed,
       'burnedTrx' => BurnedTrx,
       'energyUsed' => EnergyUsed,
       'size' => Size
     }.
