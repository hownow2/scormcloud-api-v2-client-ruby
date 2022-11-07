=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'


module RusticiSoftwareCloudV2
  class UpdateDispatchSchema
    # If true, then new registrations can be created for this dispatch. 
    attr_accessor :allow_new_registrations

    # If true, then a new registration instance will be created if the client LMS doesn't provide launch data for an existing one. Otherwise, the same instance will always be used for the given cmi.learner_id. 
    attr_accessor :instanced

    # The maximum number of registrations that can be created for this dispatch, where '0' means 'unlimited registrations'. 
    attr_accessor :registration_cap

    # The current number of registrations that have been created for this dispatch. 
    attr_accessor :registration_count

    # The ISO 8601 TimeStamp (defaults to UTC) after which this dispatch will be disabled. An empty value will represent no expiration date. 
    attr_accessor :expiration_date

    # If true, then this dispatch can be launched. 
    attr_accessor :enabled

    # SCORM Cloud user e-mail associated with this dispatch. If this is not provided, it will default to the owner of the Realm. 
    attr_accessor :email

    # Any provided notes about this dispatch.
    attr_accessor :notes

    # The postback information for this Dispatch.
    attr_accessor :post_back

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_new_registrations' => :'allowNewRegistrations',
        :'instanced' => :'instanced',
        :'registration_cap' => :'registrationCap',
        :'registration_count' => :'registrationCount',
        :'expiration_date' => :'expirationDate',
        :'enabled' => :'enabled',
        :'email' => :'email',
        :'notes' => :'notes',
        :'post_back' => :'postBack'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_new_registrations' => :'BOOLEAN',
        :'instanced' => :'BOOLEAN',
        :'registration_cap' => :'Integer',
        :'registration_count' => :'Integer',
        :'expiration_date' => :'DateTime',
        :'enabled' => :'BOOLEAN',
        :'email' => :'String',
        :'notes' => :'String',
        :'post_back' => :'PostBackSchema'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'allowNewRegistrations')
        self.allow_new_registrations = attributes[:'allowNewRegistrations']
      end

      if attributes.has_key?(:'instanced')
        self.instanced = attributes[:'instanced']
      end

      if attributes.has_key?(:'registrationCap')
        self.registration_cap = attributes[:'registrationCap']
      end

      if attributes.has_key?(:'registrationCount')
        self.registration_count = attributes[:'registrationCount']
      end

      if attributes.has_key?(:'expirationDate')
        self.expiration_date = attributes[:'expirationDate']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'postBack')
        self.post_back = attributes[:'postBack']
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


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allow_new_registrations == o.allow_new_registrations &&
          instanced == o.instanced &&
          registration_cap == o.registration_cap &&
          registration_count == o.registration_count &&
          expiration_date == o.expiration_date &&
          enabled == o.enabled &&
          email == o.email &&
          notes == o.notes &&
          post_back == o.post_back
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allow_new_registrations, instanced, registration_cap, registration_count, expiration_date, enabled, email, notes, post_back].hash
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
