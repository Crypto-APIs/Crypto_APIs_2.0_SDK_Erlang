-module(cryptoapis_get_block_details_by_block_hash_from_callback_ribsec).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_from_callback_ribsec/0]).

-type cryptoapis_get_block_details_by_block_hash_from_callback_ribsec() ::
    #{ 'difficulty' := binary(),
       'extraData' := binary(),
       'gasLimit' := binary(),
       'gasUsed' := binary(),
       'minedInSeconds' := integer(),
       'nonce' := binary(),
       'sha3Uncles' := binary(),
       'size' := integer(),
       'totalDifficulty' := binary(),
       'uncles' => list()
     }.

encode(#{ 'difficulty' := Difficulty,
          'extraData' := ExtraData,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'minedInSeconds' := MinedInSeconds,
          'nonce' := Nonce,
          'sha3Uncles' := Sha3Uncles,
          'size' := Size,
          'totalDifficulty' := TotalDifficulty,
          'uncles' := Uncles
        }) ->
    #{ 'difficulty' => Difficulty,
       'extraData' => ExtraData,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'minedInSeconds' => MinedInSeconds,
       'nonce' => Nonce,
       'sha3Uncles' => Sha3Uncles,
       'size' => Size,
       'totalDifficulty' => TotalDifficulty,
       'uncles' => Uncles
     }.
