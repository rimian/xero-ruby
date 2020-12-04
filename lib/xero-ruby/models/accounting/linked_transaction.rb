=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.6.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  require 'bigdecimal'

  class LinkedTransaction
    # Filter by the SourceTransactionID. Get all the linked transactions created from a particular ACCPAY invoice
    attr_accessor :source_transaction_id
    
    # The line item identifier from the source transaction.
    attr_accessor :source_line_item_id
    
    # Filter by the combination of ContactID and Status. Get all the linked transactions that have been assigned to a particular customer and have a particular status e.g. GET /LinkedTransactions?ContactID=4bb34b03-3378-4bb2-a0ed-6345abf3224e&Status=APPROVED.
    attr_accessor :contact_id
    
    # Filter by the TargetTransactionID. Get all the linked transactions  allocated to a particular ACCREC invoice
    attr_accessor :target_transaction_id
    
    # The line item identifier from the target transaction. It is possible  to link multiple billable expenses to the same TargetLineItemID.
    attr_accessor :target_line_item_id
    
    # The Xero identifier for an Linked Transaction e.g./LinkedTransactions/297c2dc5-cc47-4afd-8ec8-74990b8761e9
    attr_accessor :linked_transaction_id
    
    # Filter by the combination of ContactID and Status. Get all the linked transactions that have been assigned to a particular customer and have a particular status e.g. GET /LinkedTransactions?ContactID=4bb34b03-3378-4bb2-a0ed-6345abf3224e&Status=APPROVED.
    attr_accessor :status
    APPROVED = "APPROVED".freeze
    DRAFT = "DRAFT".freeze
    ONDRAFT = "ONDRAFT".freeze
    BILLED = "BILLED".freeze
    VOIDED = "VOIDED".freeze
    
    # This will always be BILLABLEEXPENSE. More types may be added in future.
    attr_accessor :type
    BILLABLEEXPENSE = "BILLABLEEXPENSE".freeze
    
    # The last modified date in UTC format
    attr_accessor :updated_date_utc
    
    # The Type of the source tranasction. This will be ACCPAY if the linked transaction was created from an invoice and SPEND if it was created from a bank transaction.
    attr_accessor :source_transaction_type_code
    ACCPAY = "ACCPAY".freeze
    SPEND = "SPEND".freeze
    
    # Displays array of validation error messages from the API
    attr_accessor :validation_errors
    
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
        :'source_transaction_id' => :'SourceTransactionID',
        :'source_line_item_id' => :'SourceLineItemID',
        :'contact_id' => :'ContactID',
        :'target_transaction_id' => :'TargetTransactionID',
        :'target_line_item_id' => :'TargetLineItemID',
        :'linked_transaction_id' => :'LinkedTransactionID',
        :'status' => :'Status',
        :'type' => :'Type',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'source_transaction_type_code' => :'SourceTransactionTypeCode',
        :'validation_errors' => :'ValidationErrors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'source_transaction_id' => :'String',
        :'source_line_item_id' => :'String',
        :'contact_id' => :'String',
        :'target_transaction_id' => :'String',
        :'target_line_item_id' => :'String',
        :'linked_transaction_id' => :'String',
        :'status' => :'String',
        :'type' => :'String',
        :'updated_date_utc' => :'DateTime',
        :'source_transaction_type_code' => :'String',
        :'validation_errors' => :'Array<ValidationError>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::LinkedTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::LinkedTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'source_transaction_id')
        self.source_transaction_id = attributes[:'source_transaction_id']
      end

      if attributes.key?(:'source_line_item_id')
        self.source_line_item_id = attributes[:'source_line_item_id']
      end

      if attributes.key?(:'contact_id')
        self.contact_id = attributes[:'contact_id']
      end

      if attributes.key?(:'target_transaction_id')
        self.target_transaction_id = attributes[:'target_transaction_id']
      end

      if attributes.key?(:'target_line_item_id')
        self.target_line_item_id = attributes[:'target_line_item_id']
      end

      if attributes.key?(:'linked_transaction_id')
        self.linked_transaction_id = attributes[:'linked_transaction_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'source_transaction_type_code')
        self.source_transaction_type_code = attributes[:'source_transaction_type_code']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
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
      status_validator = EnumAttributeValidator.new('String', ["APPROVED", "DRAFT", "ONDRAFT", "BILLED", "VOIDED"])
      return false unless status_validator.valid?(@status)
      type_validator = EnumAttributeValidator.new('String', ["BILLABLEEXPENSE"])
      return false unless type_validator.valid?(@type)
      source_transaction_type_code_validator = EnumAttributeValidator.new('String', ["ACCPAY", "SPEND"])
      return false unless source_transaction_type_code_validator.valid?(@source_transaction_type_code)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["APPROVED", "DRAFT", "ONDRAFT", "BILLED", "VOIDED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["BILLABLEEXPENSE"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_transaction_type_code Object to be assigned
    def source_transaction_type_code=(source_transaction_type_code)
      validator = EnumAttributeValidator.new('String', ["ACCPAY", "SPEND"])
      unless validator.valid?(source_transaction_type_code)
        fail ArgumentError, "invalid value for \"source_transaction_type_code\", must be one of #{validator.allowable_values}."
      end
      @source_transaction_type_code = source_transaction_type_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          source_transaction_id == o.source_transaction_id &&
          source_line_item_id == o.source_line_item_id &&
          contact_id == o.contact_id &&
          target_transaction_id == o.target_transaction_id &&
          target_line_item_id == o.target_line_item_id &&
          linked_transaction_id == o.linked_transaction_id &&
          status == o.status &&
          type == o.type &&
          updated_date_utc == o.updated_date_utc &&
          source_transaction_type_code == o.source_transaction_type_code &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [source_transaction_id, source_line_item_id, contact_id, target_transaction_id, target_line_item_id, linked_transaction_id, status, type, updated_date_utc, source_transaction_type_code, validation_errors].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
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
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
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
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
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

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).strftime('%Y-%m-%dT%l:%M:%S%z').to_s
    end
  end
end
