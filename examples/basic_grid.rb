$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'gridinit-jmeter'

# To execute the test on Gridinit, call the method .grid
# at the end of your test plan definition. You also need to
# specify the API token and optional endpoint for the Grid.

test do
  random_timer 500,500
  threads 10, {loops: 10} do
    transaction 'Dummy Scenario' do
      visit 'Altentee', 'http://127.0.0.1:9200/'
    end
  end
end.grid('4dy-zJLEIgpYkKe6p6JhSQ', {endpoint: '127.0.0.1:3000'})