<template>
  <v-app dark>
    <v-toolbar fixed class="red darken-4">
      <v-toolbar-title v-text="title"></v-toolbar-title>
    </v-toolbar>
    <main>
      <v-alert error value="true" v-if="!metamask">
        This application requires the MetaMask Chrome Plugin
      </v-alert>
      <template v-if="metamask">
        <v-container>
          <v-layout row class="pb-5">
            <wallet-info></wallet-info>
            <send-tokens></send-tokens>
          </v-layout>
          <v-layout row class="pb-5">
            <address-book></address-book>
          </v-layout>
          <v-layout row>
            <transactions></transactions>
          </v-layout>

        </v-container>
      </template>
    </main>
    <v-footer fixed>
      <span>&copy; 2017</span>
    </v-footer>
  </v-app>
</template>

<script>
import AddressBook from './components/AddressBook.vue'
import WalletInfo from './components/WalletInfo.vue'
import SendTokens from './components/SendTokens.vue'
import Transactions from './components/Transactions.vue'


export default {

  components: {
    AddressBook,
    WalletInfo,
    SendTokens,
    Transactions
  },

  data () {
    return {
      title: 'BuckICoin Wallet'
    }
  },

  computed: {
    metamask () {
      return window['web3'] !== undefined
    }
  }

}
</script>

<style lang="stylus">
  @import './stylus/main'
</style>
