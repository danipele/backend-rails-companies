json = JSON.parse(File.read('./lib/scripts/read_initial_json/data.json'))

json.each do |json_elem|
  Company.create name: json_elem['Company Name'],
                 total_revenue: json_elem['Total Revenue'][1..].gsub(/,/, ''),
                 market_cap: json_elem['Company Market Cap'][1..].gsub(/,/, ''),
                 woman_managers: json_elem['Women Managers'],
                 woman_employees: json_elem['Women Employees'],
                 esg_score: json_elem['ESG Score'],
                 co2_scope_1_2_adjusted: json_elem['CO2 Scope 1 & 2 Adjusted'].to_s.gsub(/,/, ''),
                 co2_scope_1_2_revenue_adjusted: json_elem['CO2 Scope 1 & 2 Revenue Adjusted'],
                 co2_scope_3_adjusted: json_elem['CO2 Scope 3 Adjusted'].to_s.gsub(/,/, ''),
                 co2_scope_3_revenue_adjusted: json_elem['CO2 Scope 3 Revenue Adjusted']
end
