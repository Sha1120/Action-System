package lk.jiat.action.ejb;


import javax.ejb.ActivationConfigProperty;
import javax.ejb.MessageDriven;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

@MessageDriven(
        activationConfig = {
                @ActivationConfigProperty(propertyName = "destinationLookup", propertyValue = "java:/jms/auctionTopic"),
                @ActivationConfigProperty(propertyName = "destinationType", propertyValue = "javax.jms.Topic")
        }
)
public class AuctionNotificationMDB implements MessageListener {
    @Override
    public void onMessage(Message message) {
        try {
            if (message instanceof TextMessage) {
                String update = ((TextMessage)message).getText();
                // In a real app: push to WebSocket, notify listeners, etc.
                System.out.println("Received auction update: " + update);
            }
        } catch (JMSException e) {
            e.printStackTrace();
        }
    }
}
