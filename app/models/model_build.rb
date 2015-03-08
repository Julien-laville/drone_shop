class ModelBuild < ActiveRecord::Base
  MODEL_TYPES = [
    :Racer,
    :Tricopter,
    :Octocopter,
    :Hexacopter,
    :Mini,
    :Micro,
    :Pro
  ]
end
