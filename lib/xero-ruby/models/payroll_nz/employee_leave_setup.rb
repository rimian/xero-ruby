=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  require 'bigdecimal'

  class EmployeeLeaveSetup
    # Identifier if holiday pay will be included in each payslip
    attr_accessor :include_holiday_pay
    
    # Initial holiday pay balance. A percentage — usually 8% — of gross earnings since their last work anniversary.
    attr_accessor :holiday_pay_opening_balance
    
    # Initial annual leave balance. The balance at their last anniversary, less any leave taken since then and excluding accrued annual leave.
    attr_accessor :annual_leave_opening_balance
    
    # The dollar value of annual leave opening balance if negative.
    attr_accessor :negative_annual_leave_balance_paid_amount
    
    # Number of hours accrued annually for sick leave. Multiply the number of days they're entitled to by the hours worked per day
    attr_accessor :sick_leave_hours_to_accrue_annually
    
    # Maximum number of hours accrued annually for sick leave. Multiply the maximum days they can accrue by the hours worked per day
    attr_accessor :sick_leave_maximum_hours_to_accrue
    
    # Initial sick leave balance. This will be positive unless they've taken sick leave in advance
    attr_accessor :sick_leave_opening_balance
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'include_holiday_pay' => :'includeHolidayPay',
        :'holiday_pay_opening_balance' => :'holidayPayOpeningBalance',
        :'annual_leave_opening_balance' => :'annualLeaveOpeningBalance',
        :'negative_annual_leave_balance_paid_amount' => :'negativeAnnualLeaveBalancePaidAmount',
        :'sick_leave_hours_to_accrue_annually' => :'sickLeaveHoursToAccrueAnnually',
        :'sick_leave_maximum_hours_to_accrue' => :'sickLeaveMaximumHoursToAccrue',
        :'sick_leave_opening_balance' => :'sickLeaveOpeningBalance'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'include_holiday_pay' => :'Boolean',
        :'holiday_pay_opening_balance' => :'BigDecimal',
        :'annual_leave_opening_balance' => :'BigDecimal',
        :'negative_annual_leave_balance_paid_amount' => :'BigDecimal',
        :'sick_leave_hours_to_accrue_annually' => :'BigDecimal',
        :'sick_leave_maximum_hours_to_accrue' => :'BigDecimal',
        :'sick_leave_opening_balance' => :'BigDecimal'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollNz::EmployeeLeaveSetup` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollNz::EmployeeLeaveSetup`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'include_holiday_pay')
        self.include_holiday_pay = attributes[:'include_holiday_pay']
      end

      if attributes.key?(:'holiday_pay_opening_balance')
        self.holiday_pay_opening_balance = attributes[:'holiday_pay_opening_balance']
      end

      if attributes.key?(:'annual_leave_opening_balance')
        self.annual_leave_opening_balance = attributes[:'annual_leave_opening_balance']
      end

      if attributes.key?(:'negative_annual_leave_balance_paid_amount')
        self.negative_annual_leave_balance_paid_amount = attributes[:'negative_annual_leave_balance_paid_amount']
      end

      if attributes.key?(:'sick_leave_hours_to_accrue_annually')
        self.sick_leave_hours_to_accrue_annually = attributes[:'sick_leave_hours_to_accrue_annually']
      end

      if attributes.key?(:'sick_leave_maximum_hours_to_accrue')
        self.sick_leave_maximum_hours_to_accrue = attributes[:'sick_leave_maximum_hours_to_accrue']
      end

      if attributes.key?(:'sick_leave_opening_balance')
        self.sick_leave_opening_balance = attributes[:'sick_leave_opening_balance']
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
          include_holiday_pay == o.include_holiday_pay &&
          holiday_pay_opening_balance == o.holiday_pay_opening_balance &&
          annual_leave_opening_balance == o.annual_leave_opening_balance &&
          negative_annual_leave_balance_paid_amount == o.negative_annual_leave_balance_paid_amount &&
          sick_leave_hours_to_accrue_annually == o.sick_leave_hours_to_accrue_annually &&
          sick_leave_maximum_hours_to_accrue == o.sick_leave_maximum_hours_to_accrue &&
          sick_leave_opening_balance == o.sick_leave_opening_balance
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [include_holiday_pay, holiday_pay_opening_balance, annual_leave_opening_balance, negative_annual_leave_balance_paid_amount, sick_leave_hours_to_accrue_annually, sick_leave_maximum_hours_to_accrue, sick_leave_opening_balance].hash
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
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def attributes
      to_hash(downcase: true)
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

    def parse_date(datestring)
      if datestring.include?('Date')
        seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
        Time.at(seconds_since_epoch).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
