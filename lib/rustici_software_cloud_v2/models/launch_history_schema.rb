=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'


module RusticiSoftwareCloudV2
  class LaunchHistorySchema
    attr_accessor :id

    attr_accessor :instance

    attr_accessor :score

    attr_accessor :completion_status

    attr_accessor :success_status

    attr_accessor :history_log

    attr_accessor :total_seconds_tracked

    # The time of the launch in UTC
    attr_accessor :launch_time

    # The time of the exit in UTC
    attr_accessor :exit_time

    # The time of the last runtime update in UTC
    attr_accessor :last_runtime_update

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'instance' => :'instance',
        :'score' => :'score',
        :'completion_status' => :'completionStatus',
        :'success_status' => :'successStatus',
        :'history_log' => :'historyLog',
        :'total_seconds_tracked' => :'totalSecondsTracked',
        :'launch_time' => :'launchTime',
        :'exit_time' => :'exitTime',
        :'last_runtime_update' => :'lastRuntimeUpdate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'instance' => :'Integer',
        :'score' => :'ScoreSchema',
        :'completion_status' => :'String',
        :'success_status' => :'String',
        :'history_log' => :'String',
        :'total_seconds_tracked' => :'Float',
        :'launch_time' => :'DateTime',
        :'exit_time' => :'DateTime',
        :'last_runtime_update' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'instance')
        self.instance = attributes[:'instance']
      end

      if attributes.has_key?(:'score')
        self.score = attributes[:'score']
      end

      if attributes.has_key?(:'completionStatus')
        self.completion_status = attributes[:'completionStatus']
      else
        self.completion_status = 'UNKNOWN'
      end

      if attributes.has_key?(:'successStatus')
        self.success_status = attributes[:'successStatus']
      else
        self.success_status = 'UNKNOWN'
      end

      if attributes.has_key?(:'historyLog')
        self.history_log = attributes[:'historyLog']
      end

      if attributes.has_key?(:'totalSecondsTracked')
        self.total_seconds_tracked = attributes[:'totalSecondsTracked']
      end

      if attributes.has_key?(:'launchTime')
        self.launch_time = attributes[:'launchTime']
      end

      if attributes.has_key?(:'exitTime')
        self.exit_time = attributes[:'exitTime']
      end

      if attributes.has_key?(:'lastRuntimeUpdate')
        self.last_runtime_update = attributes[:'lastRuntimeUpdate']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    #
    # allowable_values = ['UNKNOWN', 'COMPLETED', 'INCOMPLETE']
    #
    # @param [Object] completion_status Object to be assigned
    def completion_status=(completion_status)
      @completion_status = completion_status
    end
    # Custom attribute writer method checking allowed values (enum).
    #
    # allowable_values = ['UNKNOWN', 'PASSED', 'FAILED']
    #
    # @param [Object] success_status Object to be assigned
    def success_status=(success_status)
      @success_status = success_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          instance == o.instance &&
          score == o.score &&
          completion_status == o.completion_status &&
          success_status == o.success_status &&
          history_log == o.history_log &&
          total_seconds_tracked == o.total_seconds_tracked &&
          launch_time == o.launch_time &&
          exit_time == o.exit_time &&
          last_runtime_update == o.last_runtime_update
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, instance, score, completion_status, success_status, history_log, total_seconds_tracked, launch_time, exit_time, last_runtime_update].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = RusticiSoftwareCloudV2.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
