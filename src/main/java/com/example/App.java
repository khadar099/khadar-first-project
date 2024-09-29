import javax.swing.*;
import java.awt.*;

public class WelcomePage {
    public static void main(String[] args) {
        // Create a new JFrame
        JFrame frame = new JFrame("Welcome Page");
        
        // Set the default close operation
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // Set the size of the frame
        frame.setSize(400, 300);
        
        // Create a JPanel with a green background
        JPanel panel = new JPanel();
        panel.setBackground(Color.GREEN);
        
        // Create a JLabel with the welcome message
        JLabel welcomeLabel = new JLabel("Welcome to the Page", JLabel.CENTER);
        welcomeLabel.setFont(new Font("Arial", Font.BOLD, 24));
        
        // Add the label to the panel
        panel.add(welcomeLabel);
        
        // Add the panel to the frame
        frame.add(panel);
        
        // Make the frame visible
        frame.setVisible(true);
    }
}
