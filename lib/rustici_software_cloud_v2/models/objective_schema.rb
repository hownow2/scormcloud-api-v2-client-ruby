=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0 beta

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module RusticiSoftwareCloudV2

  class ObjectiveSchema
    attr_accessor :id

    attr_accessor :primary

    attr_accessor :score

    attr_accessor :score_max

    attr_accessor :score_min

    attr_accessor :score_raw

    attr_accessor :previous_score_scaled

    attr_accessor :first_score_scaled

    attr_accessor :progress_measure

    attr_accessor :first_success_time_stamp

    attr_accessor :objective_completion

    attr_accessor :objective_success

    attr_accessor :previous_objective_success

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'primary' => :'primary',
        :'score' => :'score',
        :'score_max' => :'scoreMax',
        :'score_min' => :'scoreMin',
        :'score_raw' => :'scoreRaw',
        :'previous_score_scaled' => :'previousScoreScaled',
        :'first_score_scaled' => :'firstScoreScaled',
        :'progress_measure' => :'progressMeasure',
        :'first_success_time_stamp' => :'firstSuccessTimeStamp',
        :'objective_completion' => :'objectiveCompletion',
        :'objective_success' => :'objectiveSuccess',
        :'previous_objective_success' => :'previousObjectiveSuccess'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'primary' => :'BOOLEAN',
        :'score' => :'ScoreSchema',
        :'score_max' => :'Float',
        :'score_min' => :'Float',
        :'score_raw' => :'Float',
        :'previous_score_scaled' => :'Float',
        :'first_score_scaled' => :'Float',
        :'progress_measure' => :'Float',
        :'first_success_time_stamp' => :'String',
        :'objective_completion' => :'String',
        :'objective_success' => :'String',
        :'previous_objective_success' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'primary')
        self.primary = attributes[:'primary']
      end

      if attributes.has_key?(:'score')
        self.score = attributes[:'score']
      end

      if attributes.has_key?(:'scoreMax')
        self.score_max = attributes[:'scoreMax']
      end

      if attributes.has_key?(:'scoreMin')
        self.score_min = attributes[:'scoreMin']
      end

      if attributes.has_key?(:'scoreRaw')
        self.score_raw = attributes[:'scoreRaw']
      end

      if attributes.has_key?(:'previousScoreScaled')
        self.previous_score_scaled = attributes[:'previousScoreScaled']
      end

      if attributes.has_key?(:'firstScoreScaled')
        self.first_score_scaled = attributes[:'firstScoreScaled']
      end

      if attributes.has_key?(:'progressMeasure')
        self.progress_measure = attributes[:'progressMeasure']
      end

      if attributes.has_key?(:'firstSuccessTimeStamp')
        self.first_success_time_stamp = attributes[:'firstSuccessTimeStamp']
      end

      if attributes.has_key?(:'objectiveCompletion')
        self.objective_completion = attributes[:'objectiveCompletion']
      else
        self.objective_completion = "UNKNOWN"
      end

      if attributes.has_key?(:'objectiveSuccess')
        self.objective_success = attributes[:'objectiveSuccess']
      else
        self.objective_success = "UNKNOWN"
      end

      if attributes.has_key?(:'previousObjectiveSuccess')
        self.previous_objective_success = attributes[:'previousObjectiveSuccess']
      else
        self.previous_objective_success = "UNKNOWN"
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      objective_completion_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "COMPLETED", "INCOMPLETE"])
      return false unless objective_completion_validator.valid?(@objective_completion)
      objective_success_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "PASSED", "FAILED"])
      return false unless objective_success_validator.valid?(@objective_success)
      previous_objective_success_validator = EnumAttributeValidator.new('String', ["UNKNOWN", "PASSED", "FAILED"])
      return false unless previous_objective_success_validator.valid?(@previous_objective_success)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] objective_completion Object to be assigned
    def objective_completion=(objective_completion)
      validator = EnumAttributeValidator.new('String', ["UNKNOWN", "COMPLETED", "INCOMPLETE"])
      unless validator.valid?(objective_completion)
        fail ArgumentError, "invalid value for 'objective_completion', must be one of #{validator.allowable_values}."
      end
      @objective_completion = objective_completion
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] objective_success Object to be assigned
    def objective_success=(objective_success)
      validator = EnumAttributeValidator.new('String', ["UNKNOWN", "PASSED", "FAILED"])
      unless validator.valid?(objective_success)
        fail ArgumentError, "invalid value for 'objective_success', must be one of #{validator.allowable_values}."
      end
      @objective_success = objective_success
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] previous_objective_success Object to be assigned
    def previous_objective_success=(previous_objective_success)
      validator = EnumAttributeValidator.new('String', ["UNKNOWN", "PASSED", "FAILED"])
      unless validator.valid?(previous_objective_success)
        fail ArgumentError, "invalid value for 'previous_objective_success', must be one of #{validator.allowable_values}."
      end
      @previous_objective_success = previous_objective_success
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          primary == o.primary &&
          score == o.score &&
          score_max == o.score_max &&
          score_min == o.score_min &&
          score_raw == o.score_raw &&
          previous_score_scaled == o.previous_score_scaled &&
          first_score_scaled == o.first_score_scaled &&
          progress_measure == o.progress_measure &&
          first_success_time_stamp == o.first_success_time_stamp &&
          objective_completion == o.objective_completion &&
          objective_success == o.objective_success &&
          previous_objective_success == o.previous_objective_success
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, primary, score, score_max, score_min, score_raw, previous_score_scaled, first_score_scaled, progress_measure, first_success_time_stamp, objective_completion, objective_success, previous_objective_success].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
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
        value.compact.map{ |v| _to_hash(v) }
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
