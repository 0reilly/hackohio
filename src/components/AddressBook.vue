<template>
  <v-flex xs12>
    <v-card class="card--flex-toolbar">
      <v-toolbar card class="red darken-4">
        <v-toolbar-title class="white--text">Address Book</v-toolbar-title>
      </v-toolbar>

      <v-data-table :headers="headers" :items="items" hide-actions class="elevation-1">
        <template slot-scope="items" >
          <td class="text-xs-left"></td>
          <td class="text-xs-left"></td>
          <td class="text-xs-left"></td>
        </template>
      </v-data-table>

    </v-card>
  </v-flex>
</template>
<script>
import { CONTRACT } from '../contract'

export default {
  data () {
    return {
      headers: [
        { align: 'left', text: 'name.#', value: 'name.#' },
        { align: 'left', text: 'BuckICoin', value: 'BuckICoin' },
      ],
      items: []
    }
  },


}
</script>
