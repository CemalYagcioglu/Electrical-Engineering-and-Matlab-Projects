StockPrices = csvread('AAPL.csv',1,6,[1 6 60 6]);
StockPrices = StockPrices(1:60);
StockPrices = flipud(StockPrices);
n = [1:length(StockPrices)]';
Data(:,1)=n;
Data(:,2)=StockPrices;


plot(StockPrices, 'k');
hold on
plot(ma, 'r:');
legend('Price[n]', 'ma[n]');
xlabel('Day (n)');
ylabel('Stock Price ($)');
title('Stock Price and Moving Average vs. Day (cy111)'); 
