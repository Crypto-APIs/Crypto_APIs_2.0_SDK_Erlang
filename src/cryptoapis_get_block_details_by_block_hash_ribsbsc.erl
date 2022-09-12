-module(cryptoapis_get_block_details_by_block_hash_ribsbsc).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_ribsbsc/0]).

-type cryptoapis_get_block_details_by_block_hash_ribsbsc() ::
    #{ 'difficulty' := binary(),
       'extraData' := binary(),
       'gasLimit' := binary(),
       'gasUsed' := binary(),
       'minedInSeconds' := integer(),
       'nonce' := binary(),
       'sha3Uncles' := binary(),
       'size' := integer(),
       'totalDifficulty' := binary()
     }.

encode(#{ 'difficulty' := Difficulty,
          'extraData' := ExtraData,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'minedInSeconds' := MinedInSeconds,
          'nonce' := Nonce,
          'sha3Uncles' := Sha3Uncles,
          'size' := Size,
          'totalDifficulty' := TotalDifficulty
        }) ->
    #{ 'difficulty' => Difficulty,
       'extraData' => ExtraData,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'minedInSeconds' => MinedInSeconds,
       'nonce' => Nonce,
       'sha3Uncles' => Sha3Uncles,
       'size' => Size,
       'totalDifficulty' => TotalDifficulty
     }.
