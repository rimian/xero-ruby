=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

The version of the OpenAPI document: 2.6.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  require 'bigdecimal'

  class TimesheetEarningsLine
    # Xero identifier for payroll earnings line
    attr_accessor :earnings_line_id
    
    # Xero identifier for payroll leave earnings rate
    attr_accessor :earnings_rate_id
    
    # name of earnings rate for display in UI
    attr_accessor :display_name
    
    # Rate per unit for leave earnings line
    attr_accessor :rate_per_unit
    
    # Leave earnings number of units
    attr_accessor :number_of_units
    
    # Leave earnings fixed amount. Only applicable if the EarningsRate RateType is Fixed
    attr_accessor :fixed_amount
    
    # The amount of the earnings line.
    attr_accessor :amount
    
    # Identifies if the leave earnings is taken from the timesheet. False for leave earnings line
    attr_accessor :is_linked_to_timesheet
    
    # Identifies if the earnings is using an average daily pay rate
    attr_accessor :is_average_daily_pay_rate
    
    # Flag to indentify whether the earnings line is system generated or not.
    attr_accessor :is_system_generated
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'earnings_line_id' => :'earningsLineID',
        :'earnings_rate_id' => :'earningsRateID',
        :'display_name' => :'displayName',
        :'rate_per_unit' => :'ratePerUnit',
        :'number_of_units' => :'numberOfUnits',
        :'fixed_amount' => :'fixedAmount',
        :'amount' => :'amount',
        :'is_linked_to_timesheet' => :'isLinkedToTimesheet',
        :'is_average_daily_pay_rate' => :'isAverageDailyPayRate',
        :'is_system_generated' => :'isSystemGenerated'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'earnings_line_id' => :'String',
        :'earnings_rate_id' => :'String',
        :'display_name' => :'String',
        :'rate_per_unit' => :'BigDecimal',
        :'number_of_units' => :'BigDecimal',
        :'fixed_amount' => :'BigDecimal',
        :'amount' => :'BigDecimal',
        :'is_linked_to_timesheet' => :'Boolean',
        :'is_average_daily_pay_rate' => :'Boolean',
        :'is_system_generated' => :'Boolean'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollNz::TimesheetEarningsLine` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollNz::TimesheetEarningsLine`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'earnings_line_id')
        self.earnings_line_id = attributes[:'earnings_line_id']
      end

      if attributes.key?(:'earnings_rate_id')
        self.earnings_rate_id = attributes[:'earnings_rate_id']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'rate_per_unit')
        self.rate_per_unit = attributes[:'rate_per_unit']
      end

      if attributes.key?(:'number_of_units')
        self.number_of_units = attributes[:'number_of_units']
      end

      if attributes.key?(:'fixed_amount')
        self.fixed_amount = attributes[:'fixed_amount']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'is_linked_to_timesheet')
        self.is_linked_to_timesheet = attributes[:'is_linked_to_timesheet']
      end

      if attributes.key?(:'is_average_daily_pay_rate')
        self.is_average_daily_pay_rate = attributes[:'is_average_daily_pay_rate']
      end

      if attributes.key?(:'is_system_generated')
        self.is_system_generated = attributes[:'is_system_generated']
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
          earnings_line_id == o.earnings_line_id &&
          earnings_rate_id == o.earnings_rate_id &&
          display_name == o.display_name &&
          rate_per_unit == o.rate_per_unit &&
          number_of_units == o.number_of_units &&
          fixed_amount == o.fixed_amount &&
          amount == o.amount &&
          is_linked_to_timesheet == o.is_linked_to_timesheet &&
          is_average_daily_pay_rate == o.is_average_daily_pay_rate &&
          is_system_generated == o.is_system_generated
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [earnings_line_id, earnings_rate_id, display_name, rate_per_unit, number_of_units, fixed_amount, amount, is_linked_to_timesheet, is_average_daily_pay_rate, is_system_generated].hash
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
        XeroRuby::PayrollNz.const_get(type).build_from_hash(value)
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
