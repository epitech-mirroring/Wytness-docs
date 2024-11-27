import React, { useState } from 'react';
import {
  View,
  Text,
  Modal,
  StyleSheet,
  TouchableOpacity,
  Dimensions,
} from 'react-native';

const App = () => {
  const [isModalVisible, setIsModalVisible] = useState(false);
  const [selectedApi, setSelectedApi] = useState([]);

  const openModal = () => setIsModalVisible(true);
  const closeModal = () => setIsModalVisible(false);

  const addApi = () => {
    closeModal();
  };

  return (
    <View style={styles.container}>
      <View style={styles.center}>
        <TouchableOpacity
          style={styles.addButtonContainer}
          onPress={openModal}
        >
          <Text style={styles.addIcon}>+</Text>
        </TouchableOpacity>
      </View>

      {selectedApi.length === 0 && (
        <View style={styles.emptyMessageContainer}>
          <Text style={styles.emptyMessage}>Add your first API</Text>
        </View>
      )}

      <Modal
        visible={isModalVisible}
        animationType="slide"
        transparent
        onRequestClose={closeModal}
      >
        <View style={styles.modalContainer}>
          <View style={styles.modalContent}>
            <Text style={styles.modalTitle}>Modal Sheet</Text>
            <TouchableOpacity
              style={styles.modalButton}
              onPress={() => addApi()}
            >
              <Text style={styles.modalButtonText}>Add API</Text>
            </TouchableOpacity>
            <TouchableOpacity style={styles.modalClose} onPress={closeModal}>
              <Text style={styles.modalCloseText}>Close</Text>
            </TouchableOpacity>
          </View>
        </View>
      </Modal>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#f5f5f5',
  },
  center: {
    flexDirection: 'row',
    justifyContent: 'center',
    marginBottom: 20,
  },
  addButtonContainer: {
    height: 80,
    width: 130,
    backgroundColor: '#fff',
    borderWidth: 1,
    borderRadius: 10,
    justifyContent: 'center',
    alignItems: 'center',
  },
  addIcon: {
    fontSize: 30,
    fontWeight: 'bold',
    color: '#000',
  },
  emptyMessageContainer: {
    marginTop: 20,
  },
  emptyMessage: {
    fontWeight: 'bold',
    fontSize: 16,
  },
  modalContainer: {
    flex: 1,
    justifyContent: 'flex-end',
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
  },
  modalContent: {
    backgroundColor: '#fff',
    borderTopLeftRadius: 20,
    borderTopRightRadius: 20,
    padding: 20,
    height: Dimensions.get('window').height / 1.1,
  },
  modalTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 20,
  },
  modalButton: {
    backgroundColor: '#007BFF',
    padding: 15,
    borderRadius: 10,
    marginBottom: 20,
  },
  modalButtonText: {
    color: '#fff',
    textAlign: 'center',
    fontWeight: 'bold',
  },
  modalClose: {
    alignItems: 'center',
    marginTop: 10,
  },
  modalCloseText: {
    color: '#007BFF',
    fontWeight: 'bold',
  },
});

export default App;
