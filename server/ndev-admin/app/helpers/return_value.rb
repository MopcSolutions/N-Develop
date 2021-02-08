class ReturnValue
    attr_accessor :array
    attr_accessor :valid
    attr_accessor :data

    def as_json
        {
            valid: @valid,
            data: @data
        }
    end

    def to_json(*options)
        as_json(*options).to_json(*options)
    end
end